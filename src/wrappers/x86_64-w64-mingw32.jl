# Autogenerated wrapper script for adwaita_icon_theme_jll for x86_64-w64-mingw32
export icons_dir

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `icons_dir`
const icons_dir_splitpath = ["share", "icons"]

# This will be filled out by __init__() for all products, as it must be done at runtime
icons_dir_path = ""

# icons_dir-specific global declaration
# This will be filled out by __init__()
icons_dir = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global icons_dir_path = abspath(joinpath(artifact"adwaita_icon_theme", icons_dir_splitpath...))

    global icons_dir = icons_dir_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

