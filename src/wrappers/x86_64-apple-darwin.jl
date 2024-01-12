# Autogenerated wrapper script for adwaita_icon_theme_jll for x86_64-apple-darwin
export adwaita_icons_dir

using hicolor_icon_theme_jll
JLLWrappers.@generate_wrapper_header("adwaita_icon_theme")
JLLWrappers.@declare_file_product(adwaita_icons_dir)
function __init__()
    JLLWrappers.@generate_init_header(hicolor_icon_theme_jll)
    JLLWrappers.@init_file_product(
        adwaita_icons_dir,
        "share/icons",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
