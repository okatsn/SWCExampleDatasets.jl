@testset "datasets.jl" begin
    using DataFrames
    df = SWCExampleDatasets.datasets()
    @test isa(df, DataFrame)
    @test isa(SWCExampleDatasets.__datasets, DataFrame)
    @test isequal(df, SWCExampleDatasets.__datasets)
end

@testset "TWAISWCF_test.jl" begin
    using TWAISWCF, DataFrames
    # lastrow = eachrow(SWCExampleDatasets.datasets()) |> last

    for lastrow in eachrow(SWCExampleDatasets.__datasets)
        pkgnm = lastrow.PackageName
        datnm = lastrow.Dataset
        df = SWCExampleDatasets.dataset(pkgnm, datnm)
        PT = PrepareTableDefault(df) # data preprocessing
        @info "$pkgnm/$datnm goes through `PrepareTableDefault` without error."
    end
    @test true
end
