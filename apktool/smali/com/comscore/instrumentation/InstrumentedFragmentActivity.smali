.class public Lcom/comscore/instrumentation/InstrumentedFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/comscore/instrumentation/InstrumentedFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/analytics/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    invoke-static {}, Lcom/comscore/analytics/h;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-static {}, Lcom/comscore/analytics/h;->e()Lcom/comscore/analytics/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/analytics/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/comscore/analytics/h;->a()V

    return-void
.end method
