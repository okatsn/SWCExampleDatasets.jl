@testset "datasets.jl" begin
    using DataFrames
    df = SWCExampleDatasets.datasets()
    @test isa(df, DataFrame)
    @test isa(SWCExampleDatasets.__datasets, DataFrame)
end

@testset "TWAISWCF_test.jl" begin
    using TWAISWCF, DataFrames
    lastrow = eachrow(SWCExampleDatasets.datasets()) |> last
    df = SWCExampleDatasets.dataset(lastrow.PackageName, lastrow.Dataset)
    PT = PrepareTableDefault(df) # data preprocessing
    @test true
end
