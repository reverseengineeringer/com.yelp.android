.class Lcom/yelp/android/ui/panels/BizAttributesFragment$3;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributesFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

.field final synthetic b:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$3;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$3;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$3;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$3;->b:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment$3;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 332
    return-void
.end method
