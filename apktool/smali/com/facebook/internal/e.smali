.class public Lcom/facebook/internal/e;
.super Ljava/lang/Object;
.source "DialogPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/e$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/facebook/internal/a;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v0}, Lcom/facebook/internal/e;->a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    .line 47
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/facebook/internal/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/internal/a;->e()Z

    .line 63
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Landroid/os/Bundle;Lcom/facebook/internal/d;)V
    .locals 5

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;)V

    .line 132
    invoke-interface {p2}, Lcom/facebook/internal/d;->name()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p2}, Lcom/facebook/internal/e;->d(Lcom/facebook/internal/d;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    invoke-static {}, Lcom/facebook/internal/p;->a()I

    move-result v0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/facebook/internal/s;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 146
    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unable to fetch the app\'s key-hash"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-static {}, Lcom/facebook/internal/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string/jumbo v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "is_fallback"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/facebook/internal/d;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/facebook/internal/p;->a()I

    move-result v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/facebook/internal/p;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 174
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "FacebookDialogFragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 157
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/internal/a;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/internal/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/internal/a;->e()Z

    .line 69
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/internal/e;->b(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    .line 52
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Lcom/facebook/internal/e$a;Lcom/facebook/internal/d;)V
    .locals 5

    .prologue
    .line 184
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    .line 185
    invoke-interface {p2}, Lcom/facebook/internal/d;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {p2}, Lcom/facebook/internal/e;->c(Lcom/facebook/internal/d;)I

    move-result v3

    .line 187
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 188
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-static {v3}, Lcom/facebook/internal/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-interface {p1}, Lcom/facebook/internal/e$a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    :goto_0
    if-nez v0, :cond_1

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3, v0}, Lcom/facebook/internal/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    if-nez v0, :cond_3

    .line 212
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    invoke-interface {p1}, Lcom/facebook/internal/e$a;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/facebook/internal/p;->a()I

    move-result v3

    invoke-static {v1, v2, p1, v3, v0}, Lcom/facebook/internal/p;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 119
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v0, "FacebookDialogFragment"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public static a(Lcom/facebook/internal/d;)Z
    .locals 2

    .prologue
    .line 73
    invoke-static {p0}, Lcom/facebook/internal/e;->c(Lcom/facebook/internal/d;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/d;)[I
    .locals 3

    .prologue
    .line 252
    invoke-interface {p2}, Lcom/facebook/internal/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/u$a;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/facebook/internal/u$a;->d()[I

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/facebook/internal/d;->getMinVersion()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V
    .locals 5

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    sget-object v1, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/internal/p;->a()I

    move-result v3

    invoke-static {p1}, Lcom/facebook/internal/p;->a(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/p;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Lcom/facebook/internal/d;)Z
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lcom/facebook/internal/e;->d(Lcom/facebook/internal/d;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/internal/d;)I
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-interface {p0}, Lcom/facebook/internal/d;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, v1, p0}, Lcom/facebook/internal/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/d;)[I

    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Lcom/facebook/internal/p;->a(Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static d(Lcom/facebook/internal/d;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 221
    invoke-interface {p0}, Lcom/facebook/internal/d;->name()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-interface {p0}, Lcom/facebook/internal/d;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v2, v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/u$a;

    move-result-object v1

    .line 227
    const/4 v0, 0x0

    .line 228
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/facebook/internal/u$a;->c()Landroid/net/Uri;

    move-result-object v0

    .line 232
    :cond_0
    return-object v0
.end method
