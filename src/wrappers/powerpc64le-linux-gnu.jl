# Autogenerated wrapper script for adwaita_icon_theme_jll for powerpc64le-linux-gnu
export adwaita_icons_dir

using hicolor_icon_theme_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `adwaita_icons_dir`
const adwaita_icons_dir_splitpath = ["share", "icons"]

# This will be filled out by __init__() for all products, as it must be done at runtime
adwaita_icons_dir_path = ""

# adwaita_icons_dir-specific global declaration
# This will be filled out by __init__()
adwaita_icons_dir = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (hicolor_icon_theme_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (hicolor_icon_theme_jll.LIBPATH_list,))

    global adwaita_icons_dir_path = abspath(joinpath(artifact"adwaita_icon_theme", adwaita_icons_dir_splitpath...))

    global adwaita_icons_dir = adwaita_icons_dir_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

