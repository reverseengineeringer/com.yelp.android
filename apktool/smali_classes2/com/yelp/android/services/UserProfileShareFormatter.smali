.class public Lcom/yelp/android/services/UserProfileShareFormatter;
.super Lcom/yelp/android/services/ShareFormatter;
.source "UserProfileShareFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/services/ShareFormatter",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/services/UserProfileShareFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/services/UserProfileShareFormatter$1;

    invoke-direct {v0}, Lcom/yelp/android/services/UserProfileShareFormatter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/services/UserProfileShareFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/yelp/android/services/ShareFormatter;-><init>(Landroid/os/Parcelable;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->Y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    const v1, 0x7f070571

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->Y()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f070572

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p2}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/services/e$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f07056f

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_1
    return-void
.end method

.method public b()Lcom/yelp/android/analytics/g$a;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UserProfileShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {p0}, Lcom/yelp/android/services/UserProfileShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    return-object v0
.end method
