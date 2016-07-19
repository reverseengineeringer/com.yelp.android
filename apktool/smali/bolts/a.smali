.class public final Lbolts/a;
.super Ljava/lang/Object;
.source "AppLinks.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {p1}, Lbolts/a;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v2, "target_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v2, "al_nav_in"

    invoke-static {p0, v2, p1, v0}, Lbolts/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/util/Map;)V

    .line 87
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "al_applink_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
