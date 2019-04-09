**Maintained by:** [@YellowAfterlife](https://github.com/YellowAfterlife)  
**Quick links:** [Documentation](https://yal.cc/r/19/instance_flags) · [itch.io page (has the demo project!)](https://yellowafterlife.itch.io/gamemaker-instance-flags) · [GM Marketplace page](https://marketplace.yoyogames.com/assets/8113/)  
**Versions**: GameMaker: Studio (1.4.1804+ only), GameMaker Studio 2  
**Platforms:** All of them

Historically GameMaker instances only had a single flag ("soild"), which was mutually exclusive with filtering instances by their type/parent, but, with introduction of collision list functions, we can do better, allowing to filter by type AND an arbitrary set of flags.

So, for instance, you can check whether your character is standing on a slippery solid block, or whether that block is jump-through, or find the nearest airborne target in a tower defense game, or many other uses.

See the demo project for an example!

GMS2 note on demo: Remove the "collision_list_funcs" extension after importing the project - it is only used to workaround an issue with GMS1.