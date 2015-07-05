.class public Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityUserProfile.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/z;


# static fields
.field private static a:Landroid/content/UriMatcher;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/yelp/android/serializable/User;

.field private f:Landroid/content/Intent;

.field private g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

.field private final h:Landroid/content/BroadcastReceiver;

.field private final i:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "user_details"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "user/profile/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 318
    new-instance v0, Lcom/yelp/android/ui/activities/profile/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/g;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/yelp/android/ui/activities/profile/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/h;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->i:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "REFRESH_USER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string/jumbo v1, "about_me"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "about_me"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v1, "com.yelp.android.messages.read"

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 196
    const-string/jumbo v0, "extra_notification_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/Notifier$NotificationType;

    .line 197
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 199
    if-nez v0, :cond_2

    .line 201
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

    .line 203
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 205
    :cond_1
    sget-object v3, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 214
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

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->finish()V

    .line 221
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

    .line 224
    :cond_3
    sget-object v3, Lcom/yelp/android/ui/activities/profile/i;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 236
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

    .line 238
    :goto_1
    invoke-static {p0, v0}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;)V

    .line 240
    :cond_4
    return-void

    .line 207
    :pswitch_0
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_1
    const-string/jumbo v3, "userid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_0

    .line 226
    :pswitch_2
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_1

    .line 229
    :pswitch_3
    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    goto :goto_1

    .line 232
    :pswitch_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c()V

    .line 233
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    goto :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    .line 178
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d()V

    .line 179
    const v0, 0x7f0703cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(I)V

    .line 180
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "REFRESH_USER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const v0, 0x7f0703cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(I)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    sparse-switch p1, :sswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 255
    :sswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 256
    invoke-static {p3}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/serializable/User;)V

    goto :goto_0

    .line 262
    :sswitch_1
    if-ne p2, v0, :cond_1

    .line 263
    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 265
    const v0, 0x7f070468

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 272
    :sswitch_2
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    .line 275
    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "photo_added"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x404 -> :sswitch_2
        0x40d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 108
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 109
    const-string/jumbo v0, "user_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "about_me"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    .line 113
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/analytics/o;

    invoke-direct {v3, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 124
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Intent;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_1

    .line 128
    const-string/jumbo v0, "No User could be found, we must be invoked with an intent specifying either a User ID, a User object, or a valid url to a check_in"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->finish()V

    .line 170
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "user_profile"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_4

    .line 141
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    .line 149
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const-string/jumbo v3, "user_profile"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 155
    :cond_2
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d()V

    .line 159
    :cond_3
    const-string/jumbo v0, "com.yelp.android.messages.read"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/f;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 143
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    goto :goto_1

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->e:Lcom/yelp/android/serializable/User;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/serializable/User;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->g:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 245
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->d:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostResume()V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->i:Lcom/yelp/android/appdata/webrequests/m;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->a(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/ui/activities/support/YelpActivity;Z)V

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 294
    const-string/jumbo v2, "dialog_add_photo"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/DlgAddPhotoCaption;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->f:Landroid/content/Intent;

    .line 297
    return-void
.end method
