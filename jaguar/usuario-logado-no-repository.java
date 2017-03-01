// pegar usuário logado no repositório
class Repository {

	@Inject
	PlcBaseUserProfileVO plcBaseUserProfileVO;

	public void metodo() {
		AppUserProfileVO appUsuVO = (AppUserProfileVO) plcBaseUserProfileVO;
		Servidor s = appUsuVO.getServidor().getServidor();
		requerimento.getAverbacaoAluno().setAuditoria(new AuditoriaSimplificada());
		requerimento.getAverbacaoAluno().getAuditoria().setServidorLogado(s);
	}
}
