mkdir -p ${PREFIX}/scripts
cat << EOF > ${PREFIX}/scripts/activate_${PKG_NAME}.sh
bash ${PREFIX}/etc/conda/deactivate.d/deactivate-gcc_linux-64.sh || true

export PATH=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/bin:${PATH}
export INCLUDE=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/include:${INCLUDE}
export LD_LIBRARY_PATH=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/lib64:${LD_LIBRARY_PATH}
EOF

cat << EOF > ${PREFIX}/scripts/deactivate_${PKG_NAME}.sh
bash ${PREFIX}/etc/conda/deactivate.d/deactivate-gcc_linux-64.sh || true

export PATH=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/bin:${PATH}
export INCLUDE=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/include:${INCLUDE}
export LD_LIBRARY_PATH=/opt/ohpc/pub/compiler/gcc/${GNU_VERSION}/lib64:${LD_LIBRARY_PATH}
EOF
