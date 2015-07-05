.class public Lcom/bumptech/glide/manager/k;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:Lcom/bumptech/glide/manager/k;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/bumptech/glide/j;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/manager/k;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/k;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/k;->c:Lcom/bumptech/glide/manager/k;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public static a()Lcom/bumptech/glide/manager/k;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/bumptech/glide/manager/k;->c:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/j;

    if-nez v0, :cond_1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/j;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/manager/b;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/b;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/j;

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/j;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/bumptech/glide/j;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/yelp/android/ai/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)V

    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 2

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-static {}, Lcom/yelp/android/ai/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    .line 85
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 87
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 88
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/bumptech/glide/j;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 163
    const-string/jumbo v0, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 164
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 170
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->b()Lcom/bumptech/glide/j;

    move-result-object v1

    .line 174
    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a()Lcom/bumptech/glide/manager/a;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Lcom/bumptech/glide/j;)V

    move-object v0, v1

    .line 178
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/j;
    .locals 3

    .prologue
    .line 183
    const-string/jumbo v0, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 184
    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 186
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 190
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b()Lcom/bumptech/glide/j;

    move-result-object v1

    .line 194
    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a()Lcom/bumptech/glide/manager/a;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/h;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Lcom/bumptech/glide/j;)V

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/yelp/android/ai/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You cannot start a load on a detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/yelp/android/ai/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)V

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    const/4 v2, 0x1

    .line 206
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 218
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 220
    :goto_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.bumptech.glide.manager"

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string/jumbo v1, "com.bumptech.glide.manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return v2

    .line 208
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    .line 210
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    .line 215
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
