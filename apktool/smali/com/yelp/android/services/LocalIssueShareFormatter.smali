.class public Lcom/yelp/android/services/LocalIssueShareFormatter;
.super Lcom/yelp/android/services/ShareFormatter;
.source "LocalIssueShareFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/services/ShareFormatter",
        "<",
        "Lcom/yelp/android/serializable/LocalIssue;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/services/LocalIssueShareFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/yelp/android/services/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/yelp/android/services/LocalIssueShareFormatter$1;

    invoke-direct {v0}, Lcom/yelp/android/services/LocalIssueShareFormatter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/services/LocalIssueShareFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/LocalIssue;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yelp/android/services/ShareFormatter;-><init>(Landroid/os/Parcelable;)V

    .line 30
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0705ce

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/services/LocalIssueShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0701ba

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->b:Lcom/yelp/android/services/e$a;

    if-nez v0, :cond_1

    .line 41
    const-string/jumbo v0, "Package Information is null. Make sure you call #formatData first."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->a:Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/services/LocalIssueShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->b:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    const v0, 0x7f07031c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/services/LocalIssueShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 64
    iput-object p2, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->b:Lcom/yelp/android/services/e$a;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->b:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    const v1, 0x7f0705ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "android.intent.extra.TEXT"

    const v2, 0x7f0701ba

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/services/LocalIssueShareFormatter;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yelp/android/services/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/services/LocalIssueShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/services/LocalIssueShareFormatter;->b:Lcom/yelp/android/services/e$a;

    invoke-super {p0, p1, v0, p3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/analytics/g$a;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    return-object v0
.end method
