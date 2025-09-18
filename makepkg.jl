# Script to initialize the DoubleTrouble.jl package from a template

using Pkg
Pkg.activate(".")
Pkg.add("PkgTemplates")

using PkgTemplates

t = Template(;
           user="reykboerner",
           authors=["R. Boerner"],
           plugins=[
               License(name="MIT"),
               Git(),
               GitHubActions(),
           ],
       )

t("DoubleTrouble.jl")