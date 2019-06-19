# Set options here
options(golem.pkg.name = "aaaa") # TRUE = production mode, FALSE = development mode
options( "golem.pkg.name" = "aaa")


# Detach all loaded packages and clean your environment
golem::detach_all_attached()
# rm(list=ls(all.names = TRUE))

# Document and reload your package
golem::document_and_reload()

# Run the application
aaaa::run_app(with = "runApp")
