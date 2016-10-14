
class {
	@Inject @QPlcDefault 
	protected PlcBeanCloneUtil beanCloneUtil;
	
method {
FruicaoFeriasEntity fruicaoClone = null;
fruicaoClone = (FruicaoFeriasEntity) beanCloneUtil.cloneBean(hafe.getFruicaoFerias());
}
}
