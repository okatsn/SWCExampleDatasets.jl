using SWCExampleDatasets
using Documenter

DocMeta.setdocmeta!(SWCExampleDatasets, :DocTestSetup, :(using SWCExampleDatasets); recursive=true)

makedocs(;
    modules=[SWCExampleDatasets],
    authors="okatsn <okatsn@gmail.com> and contributors",
    repo="https://github.com/okatsn/SWCExampleDatasets.jl/blob/{commit}{path}#{line}",
    sitename="SWCExampleDatasets.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://okatsn.github.io/SWCExampleDatasets.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/okatsn/SWCExampleDatasets.jl",
    devbranch="main",
)
