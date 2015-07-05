.class Lcom/yelp/android/ui/util/di;
.super Ljava/lang/Object;
.source "YelpPrivacyPolicyDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/dg;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/dg;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/util/di;->a:Lcom/yelp/android/ui/util/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/util/di;->a:Lcom/yelp/android/ui/util/dg;

    invoke-static {v0}, Lcom/yelp/android/ui/util/dg;->b(Lcom/yelp/android/ui/util/dg;)Lcom/yelp/android/appdata/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->e(Z)V

    .line 88
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->PrivacyPolicyOk:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 90
    return-void
.end method
