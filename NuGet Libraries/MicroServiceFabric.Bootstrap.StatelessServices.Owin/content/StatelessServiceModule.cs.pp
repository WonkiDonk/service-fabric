﻿using System;
using MicroServiceFabric.Bootstrap;
using Owin;
using SimpleInjector;
using SimpleInjector.Modules;

namespace $rootnamespace$
{
    internal sealed class StatelessServiceModule : Module
    {
        public override void Load(Container container)
        {
            container.Register<IServiceEventSource, ServiceEventSource>(Lifestyle.Singleton);
            container.Register<Action<IAppBuilder>>(() => Startup.ConfigureApp);

            // TODO: Register any service dependencies that your service might need here.
        }
    }
}
