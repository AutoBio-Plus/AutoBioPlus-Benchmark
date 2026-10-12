from .xhand_thermalcycler_close import AbppXHandThermalCyclerClosePolicy


class AbppXHandThermalCyclerOpenPolicy(AbppXHandThermalCyclerClosePolicy):
    pass


def make_policy(*, action_shape, device, env, server=None, replay_path=None):
    del replay_path
    return AbppXHandThermalCyclerOpenPolicy(
        action_shape=action_shape,
        device=device,
        env=env,
        loop=False,
        server=server,
    )
