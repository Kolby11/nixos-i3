import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  rewrites: {
    'en/:path*': ':path*',
  },
  locales: {
    root: {
      label: "English",
      lang: "en",
      title: "Kolby`s NixOS Multidesk",
      description: "Kolby`s NixOS multidesktop environment",
       themeConfig: {
        // https://vitepress.dev/reference/default-theme-config
        nav: [
          { text: 'Home', link: '/' },
          { text: 'Docs', link: '/introduction/' }
        ],

        sidebar: [
          { text: "Introduction", collapsed: false, items: [
            {
              items: [
                { text: 'Introduction', link: '/introduction/' },
                { text: 'Basic principles', link: '/introduction/basic-principles' },
                { text: 'Multi desktop environment', link: '/introduction/multi-desktop-environment' }
              ]
            }]
          },
          { text: "NixOS configuration", collapsed: false, items: [
            {
              items: [
                { text: 'System configuration', link: '/system/' },
                { text: 'i3', link: '/system/desktops/i3/' },
                { text: 'Hyprland', link: '/system/desktops/hyprland/' },
                { text: 'Gnome', link: '/system/desktops/gnome/' },
                { text: 'KDE', link: '/system/desktops/kde/' }
              ]
            }]
          },
          { text: "Home Manager configuration", collapsed: false, items: [
            {
              items: [
                { text: 'User configuration', link: '/home/' },
                { text: 'Kolby', items: [
                  { text: 'i3', collapsed: false, items: [
                      { text: 'Polybar', link: '/home/kolby/i3/polybar' },
                    ] 
                  },
                  { text: 'Hyprland', collapsed: false, items: [
                      { text: 'Waybar', link: '/home/kolby/hyprland/waybar' },
                    ] 
                  },
                  { text: 'Gnome', collapsed: false, items: [
                    ] 
                  },
                  { text: 'KDE', collapsed: false, items: [
                    ] 
                  } ] 
                } ]
            }]
          }
        ],

        socialLinks: [
          { icon: 'github', link: 'https://github.com/Kolby11/nixos-i3', ariaLabel: 'source' }
        ]
      }
    },
    sk: {
      label: "Slovak",
      lang: "sk",
      title: "Kolbyho NixOS Multidesk",
      description: "Kolbyho NixOS viac-desktopové prostredie konfigurácia",
       themeConfig: {
        // https://vitepress.dev/reference/default-theme-config
        nav: [
          { text: 'Domov', link: '/sk/' },
          { text: 'Dokumentácia', link: '/sk/introduction/' }
        ],
        sidebar: [
          { text: "Úvod", collapsed: false, items: [
            {
              items: [
                { text: 'Úvod', link: '/sk/introduction/' },
                { text: 'Základné princípy', link: '/sk/introduction/basic-principles' },
                { text: 'Viac-desktopové prostredie', link: '/sk/introduction/multi-desktop-environment' }
              ]
            }]
          },
          { text: "NixOS konfigurácia", collapsed: false, items: [
            {
              items: [
                { text: 'Systémová konfigurácia', link: '/sk/system/' },
                { text: 'i3', link: '/sk/system/desktops/i3/' },
                { text: 'Hyprland', link: '/sk/system/desktops/hyprland/' },
                { text: 'Gnome', link: '/sk/system/desktops/gnome/' },
                { text: 'KDE', link: '/sk/system/desktops/kde/' }
              ]
            } ]
          },
          { text: "Home Manager konfigurácia", collapsed: false, items: [
            {
              items: [
                { text: 'Používateľská konfigurácia', link: '/sk/home/' },
                { text: 'Kolby', items: [
                  { text: 'i3', collapsed: false, items: [
                      { text: 'Polybar', link: '/sk/home/kolby/i3/polybar' },
                    ] 
                  },
                  { text: 'Hyprland', collapsed: false, items: [
                      { text: 'Waybar', link: '/sk/home/kolby/hyprland/waybar' },
                    ] 
                  },
                  { text: 'Gnome', collapsed: false, items: [
                    ] 
                  },
                  { text: 'KDE', collapsed: false, items: [
                    ] 
                  } ] 
                } ]
            }]
          }
        ],

        socialLinks: [
          { icon: 'github', link: 'https://github.com/Kolby11/nixos-i3', ariaLabel: 'zdroj' }
        ]
      }
    }
  }
})
