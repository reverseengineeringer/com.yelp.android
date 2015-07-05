.class Lcom/yelp/android/ui/panels/businesspage/h;
.super Ljava/lang/Object;
.source "PanelMoreInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/analytics/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yelp/android/ui/panels/businesspage/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/f;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/h;->c:Lcom/yelp/android/ui/panels/businesspage/f;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/h;->a:Lcom/yelp/android/analytics/g;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesspage/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/h;->a:Lcom/yelp/android/analytics/g;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/h;->c:Lcom/yelp/android/ui/panels/businesspage/f;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/f;->b(Ljava/lang/String;)V

    .line 170
    return-void
.end method
