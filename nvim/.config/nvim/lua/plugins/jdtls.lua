return {
  "mfussenegger/nvim-jdtls",
  opts = function()
    local mason_registry = require("mason-registry")
    local lombok_jar = mason_registry.get_package("jdtls"):get_install_path() .. "/lombok.jar"
    local java_17 = os.getenv("JAVA_17")
    local java_11 = os.getenv("JAVA_11")
    return {
      -- How to find the root dir for a given filename. The default comes from
      -- lspconfig which provides a function specifically for java projects.
      root_dir = require("lspconfig.configs.jdtls").default_config.root_dir,

      -- How to find the project name for a given root dir.
      project_name = function(root_dir)
        return root_dir and vim.fs.basename(root_dir)
      end,

      -- Where are the config and workspace dirs for a project?
      jdtls_config_dir = function(project_name)
        return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/config"
      end,
      jdtls_workspace_dir = function(project_name)
        return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"
      end,

      -- How to run jdtls. This can be overridden to a full java command-line
      -- if the Python wrapper script doesn't suffice.
      cmd = {
        vim.fn.exepath("jdtls"),
        string.format("--java-executable=%s/bin/java", java_17),
        string.format("--jvm-arg=-javaagent:%s", lombok_jar),
      },
      full_cmd = function(opts)
        local fname = vim.api.nvim_buf_get_name(0)
        local root_dir = opts.root_dir(fname)
        local project_name = opts.project_name(root_dir)
        local cmd = vim.deepcopy(opts.cmd)
        if project_name then
          vim.list_extend(cmd, {
            "-configuration",
            opts.jdtls_config_dir(project_name),
            "-data",
            opts.jdtls_workspace_dir(project_name),
          })
        end
        return cmd
      end,

      -- These depend on nvim-dap, but can additionally be disabled by setting false here.
      dap = { hotcodereplace = "auto", config_overrides = {} },
      dap_main = {},
      test = true,
      settings = {
        java = {
          inlayHints = {
            parameterNames = {
              enabled = "all",
            },
          },
          configuration = {
            -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
            -- And search for `interface RuntimeOption`
            -- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
            runtimes = {
              {
                name = "JavaSE-11",
                path = java_11,
              },
              {
                name = "JavaSE-17",
                path = java_17,
              },
            },
          },
        },
      },
    }
  end,
}
