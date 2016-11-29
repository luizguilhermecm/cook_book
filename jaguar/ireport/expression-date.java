$P{P_PERIODO_INI} == null ?
  "Até " + $V{DT_FIM_FORMATADA}
: $P{P_PERIODO_FIM} == null ?
    "A partir de " + $V{DT_INI_FORMATADA}
: $V{DT_INI_FORMATADA} + " a " + $V{DT_FIM_FORMATADA}



VS



$P{P_PERIODO_INI} == null ? 
  new StringBuilder().append("Até ").append($V{DT_FIM_FORMATADA}).toString()
: $P{P_PERIODO_FIM} == null ? 
    new StringBuilder().append("A partir de ").append($V{DT_INI_FORMATADA}).toString()
: new StringBuilder().append($V{DT_INI_FORMATADA}).append(" a ").append($V{DT_FIM_FORMATADA}).toString()
