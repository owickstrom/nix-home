{ config, lib, pkgs, ... }: {
  # Original: https://gist.github.com/kittinunf/25484de6294a0c4263c86dda3aa1580c
  xdg.configFile."ctags/kotlin.ctags" = {
    text = ''
        --langdef=kotlin
        --langmap=kotlin:+.kt
        --langmap=kotlin:+.kts
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy|inner|open)[[:space:]]*)*(private[^ ]*|protected)?[[:space:]]*class[[:space:]]+([[:alnum:]_:]+)/\4/c,classes/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy)[[:space:]]*)*(private[^ ]*|protected)?[[:space:]]*object[[:space:]]+([[:alnum:]_:]+)/\4/o,objects/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy|open)[[:space:]]*)*(private[^ ]*|protected)?[[:space:]]*((abstract|final|sealed|implicit|lazy)[[:space:]]*)*data class[[:space:]]+([[:alnum:]_:]+)/\6/d,data classes/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy)[[:space:]]*)*(private[^ ]*|protected)?[[:space:]]*interface[[:space:]]+([[:alnum:]_:]+)/\4/i,interfaces/
        --regex-kotlin=/^[[:space:]]*type[[:space:]]+([[:alnum:]_:]+)/\1/T,types/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy|override|open|private[^ ]*(\[[a-z]*\])*|protected)[[:space:]]*)*fun[[:space:]]+([[:alnum:]_:]+)/\4/m,methods/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy|override|private[^ ]*|protected)[[:space:]]*)*(const[[:space:]])*val[[:space:]]+([[:alnum:]_]+)/\4/C,constants/
        --regex-kotlin=/^[[:space:]]*((abstract|final|sealed|implicit|lazy|override|private[^ ]*|protected)[[:space:]]*)*(lateinit[[:space:]]*)*var[[:space:]]+([[:alnum:]_]+)/\4/v,variables/
        --regex-kotlin=/^[[:space:]]*package[[:space:]]+([[:alnum:]_.:]+)/\1/p,packages/
        --regex-kotlin=/^[[:space:]]*import[[:space:]]+([[:alnum:]_.:]+)/\1/I,imports/
    '';
  };
}
