.class Lcom/yelp/android/ui/panels/businesspage/b$2;
.super Ljava/lang/Object;
.source "PanelBusinessPageHeader.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/TwoTierButton$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesspage/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/b;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/b$2;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/widgets/TwoTierButton;[I)V
    .locals 4

    .prologue
    .line 443
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p2, v0

    .line 444
    const v3, 0x10100a7

    if-ne v2, v3, :cond_0

    .line 445
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b$2;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b$2;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/ui/panels/businesspage/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/panels/businesspage/b;[I)V

    .line 453
    :goto_1
    return-void

    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/b$2;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/b$2;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/ui/panels/businesspage/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v1, v0}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/ui/panels/businesspage/b;[I)V

    goto :goto_1
.end method
