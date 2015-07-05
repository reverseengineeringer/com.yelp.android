.class Lcom/yelp/android/ui/panels/i;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/m;

.field final synthetic b:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/yelp/android/ui/panels/i;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/i;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/panels/i;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/i;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/i;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 295
    return-void
.end method
