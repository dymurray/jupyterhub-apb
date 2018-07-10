FROM ansibleplaybookbundle/apb-base:canary

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGp1cHl0ZXJodWItYXBiCmRlc2NyaXB0aW9uOiB5b3VyIGRlc2Ny\
aXB0aW9uCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxh\
eU5hbWU6IGp1cHl0ZXJodWItYXBiCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3Jp\
cHRpb246IFRoaXMgZGVmYXVsdCBwbGFuIGRlcGxveXMganVweXRlcmh1Yi1hcGIKICAgIGZyZWU6\
IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogW10="

COPY playbooks /opt/apb/actions
COPY . /opt/ansible/roles/jupyterhub-apb
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
