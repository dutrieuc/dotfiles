#!/bin/bash
export-scaffold () {
    CUR_DIR=${PWD}
    # ODOO_WS="~/"
    CLIENT_WS="${PWD}/${1}"
    mkdir ${CLIENT_WS}
    cd ${HOME}/tools-odoo/export/
    python3 export.py scaffold ${CLIENT_WS} $2 $3
    cd $CUR_DIR
}

odrr () {
  odev "$@" --dev=xml --log-handler odoo.addons.base.models.ir_attachment:WARNING
}

odr () {
  odev "$@" --log-handler odoo.addons.base.models.ir_attachment:WARNING
}
