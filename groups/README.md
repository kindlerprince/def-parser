The grammar is written in groups.ypp file
It is explained as follow:-

Groups
[GROUPS numGroups ;
     [– groupName compNamePattern ...
          [+ REGION regionNam]
          [+ PROPERTY {propName propVal} ...] ...
     ;] ...
END GROUPS]
Defines groups in a design.
compNamePattern             Specifies the components that make up the group. Do not assign
                            any component to more than one group. You can specify any of
                            the following:
                              ■    A component name, for example C3205
                              ■    A list of component names separated by spaces, for
                                   example, I01 I02 C3204 C3205
                              ■    A pattern for a set of components, for example, IO* and
                                   C320*
groupName                   Specifies the name for a group of components.
numGroups                   Specifies the number of groups defined in the GROUPS section.
PROPERTY propName propVal
                            Specifies a numerical or string value for a group property defined
                            in the PROPERTYDEFINITIONS statement. The propName you
                            specify must match the propName listed in the
                            PROPERTYDEFINITIONS statement.
REGION regionName           Specifies a rectangular region in which the group must lie.
                            regionName specifies a region previously defined in the
                            REGIONS section. If region restrictions are specified in both
                            COMPONENT and GROUP statements for the same component,
                            the component restriction overrides the group restriction.
