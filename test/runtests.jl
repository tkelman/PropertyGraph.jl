using Compat

testfiles =["testdata",
		"testdatasocial",
		"populategraphtest",
        "compositequerytest",
		"socialgraphtest",
		"changetrackertest",
		"definetestgraphloader",
		"graphloadertest"
		]

println("Running tests:")

for t in testfiles
    testfilepath = joinpath(dirname(@__FILE__),"$(t).jl")
    println("running $(testfilepath) ...")
    include(testfilepath)
end

