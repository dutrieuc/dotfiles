#!/bin/bash
export-scaffold () {
    CUR_DIR=${PWD}
    ODOO_WS="/home/dutrieux/workspace/odoosrc"
    CLIENT_WS="${PWD}/${1}"
    mkdir ${CLIENT_WS}
    cd ${ODOO_WS}/tools/export-tools/
    python3 export.py scaffold ${CLIENT_WS} $2 $3
    cd $CUR_DIR
}

odrr () {
  odev "$@" --dev=xml,reload --log-handler odoo.addons.base.models.ir_attachment:WARNING
}

odr () {
  odev "$@" --log-handler odoo.addons.base.models.ir_attachment:WARNING
}
