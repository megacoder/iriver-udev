RULESDIR=/etc/udev/rules.d

RULES=49-iriver.rules

all::	${RULES}

install:: ${RULES}
	install -d ${RULESDIR}
	install -c -m 0444 ${RULES} ${RULESDIR}/

uninstall::
	cd ${RULESDIR} && ${RM} ${RULES}
