.class public Lcom/yelp/android/services/FavoritesListShareFormatter;
.super Lcom/yelp/android/services/ShareFormatter;
.source "FavoritesListShareFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/services/ShareFormatter",
        "<",
        "Lcom/yelp/android/serializable/FavoritesList;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/services/FavoritesListShareFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/yelp/android/services/FavoritesListShareFormatter$1;

    invoke-direct {v0}, Lcom/yelp/android/services/FavoritesListShareFormatter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/services/FavoritesListShareFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/FavoritesList;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yelp/android/services/ShareFormatter;-><init>(Landroid/os/Parcelable;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const v1, 0x7f0701b9

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->m()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p2}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/FavoritesListShareFormatter;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, "android.intent.extra.TEXT"

    const v2, 0x7f0701b9

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/yelp/android/services/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->g()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->m()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/analytics/g$a;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->FavoritesListShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v1

    const-string/jumbo v2, "list_id"

    invoke-virtual {p0}, Lcom/yelp/android/services/FavoritesListShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FavoritesList;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    return-object v0
.end method
