project "SharpLang.Compiler.Tests"

  kind "SharedLib"
  language "C#"
  flags { "Unsafe" }

  SetupManagedProject()

  files { "*.cs" }

  libdirs 
  {
    depsdir .. "/NUnit",
  }

  dependson { "SharpLang.RuntimeInline", "corlib-net_4_5" }
  
  links
  {
    "System",
    "System.Core",
    "System.Data",
    "System.Data.DataSetExtensions",
    "System.Xml",
    "System.Xml.Linq",
    "SharpLang.Compiler",
    "SharpLLVM",
    "Microsoft.CSharp",
    "nunit.framework"
  }