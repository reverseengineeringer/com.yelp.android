.class Lcom/yelp/android/ui/panels/businesspage/c$3;
.super Ljava/lang/Object;
.source "PanelMoreInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesspage/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/c;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/c$3;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c$3;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c$3;->a:Lcom/yelp/android/ui/panels/businesspage/c;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Lcom/yelp/android/ui/panels/businesspage/c;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Ljava/lang/String;)V

    .line 233
    return-void
.end method
