.class public Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityUserProfile.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$5;,
        Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/UriMatcher;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/yelp/android/serializable/User;

.field private f:Landroid/content/Intent;

.field private g:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

.field private final i:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;

.field private final j:Landroid/content/BroadcastReceiver;

.field private final k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    .line 56
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "user_details"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "user/profile/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 365
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$2;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->i:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;

    .line 378
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$3;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->j:Landroid/content/BroadcastReceiver;

    .line 485
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "REFRESH_USER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string/jumbo v1, "about_me"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v1, "com.yelp.android.messages.read"

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 356
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 213
    const-string/jumbo v0, "extra_notification_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 217
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 219
    if-nez v0, :cond_2

    .line 221
    const-string/jumbo v3, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".yelp."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 225
    :cond_1
    sget-object v3, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 234
    const-string/jumbo v3, "Unknown user requested by uri, URI=[%s], Authority=[%s], Path=[%s] "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->finish()V

    .line 245
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "android.intent.category.BROWSABLE"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 248
    :cond_3
    sget-object v3, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$5;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Have no clue what to do with this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 262
    :goto_1
    invoke-static {p0, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 264
    :cond_4
    return-void

    .line 227
    :pswitch_0
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_0

    .line 230
    :pswitch_1
    const-string/jumbo v3, "userid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_0

    .line 250
    :pswitch_2
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_1

    .line 253
    :pswitch_3
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    goto :goto_1

    .line 256
    :pswitch_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d()V

    .line 257
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 248
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    .line 195
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e()V

    .line 196
    const v0, 0x7f070401

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(I)V

    .line 197
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "REFRESH_USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->j:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const v0, 0x7f070401

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(I)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    return v0
.end method

.method public c()Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    sparse-switch p1, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 281
    :sswitch_0
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 282
    invoke-static {p3}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/serializable/User;)V

    goto :goto_0

    .line 288
    :sswitch_1
    if-ne p2, v1, :cond_1

    .line 289
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 291
    const v0, 0x7f070486

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 298
    :sswitch_2
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    .line 300
    if-ne p2, v1, :cond_0

    .line 301
    const-string/jumbo v0, "extra.photo_added"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    :cond_2
    const-string/jumbo v0, "extra.photo_deleted"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    goto :goto_0

    .line 305
    :cond_3
    const-string/jumbo v0, "extra.photo_set_primary"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    .line 308
    const v0, 0x7f0705a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x411 -> :sswitch_1
        0x42e -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c()Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->B_()V

    .line 336
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 337
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 120
    const-string/jumbo v0, "user_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "about_me"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    .line 124
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/analytics/n;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 135
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Intent;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_1

    .line 139
    const-string/jumbo v0, "No User could be found, we must be invoked with an intent specifying either a User ID, a User object, or a valid url to a check_in"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->finish()V

    .line 187
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "user_profile"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_4

    .line 156
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const-string/jumbo v3, "user_profile"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 170
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_3

    .line 171
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e()V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->i:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 175
    const-string/jumbo v0, "com.yelp.android.messages.read"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$1;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    goto :goto_1

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 269
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c()Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->B_()V

    .line 342
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 319
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostResume()V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/ui/activities/support/YelpActivity;Z)V

    .line 327
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    .line 328
    const-string/jumbo v2, "dialog_add_photo"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->show(Landroid/support/v4/app/o;Ljava/lang/String;)I

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    .line 331
    return-void
.end method
