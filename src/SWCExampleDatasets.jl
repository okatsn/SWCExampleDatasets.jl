module SWCExampleDatasets


using SmallDatasetMaker # (required) See also `SmallDatasetMaker.datasets`.
function SWCExampleDatasets.dataset(package_name, dataset_name)
    SmallDatasetMaker.dataset(SWCExampleDatasets,package_name, dataset_name)
end # (optional)

SWCExampleDatasets.datasets() = SmallDatasetMaker.datasets(SWCExampleDatasets) # (optional)
# so that you can use `SWCExampleDatasets.datasets()` to list all availabe `package/dataest`s in `SWCExampleDatasets`


end
