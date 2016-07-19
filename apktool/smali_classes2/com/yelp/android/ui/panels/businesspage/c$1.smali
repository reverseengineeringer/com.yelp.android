.class Lcom/yelp/android/ui/panels/businesspage/c$1;
.super Ljava/lang/Object;
.source "PanelMoreInfoHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesspage/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/analytics/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yelp/android/ui/panels/businesspage/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/c;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->c:Lcom/yelp/android/ui/panels/businesspage/c;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->a:Lcom/yelp/android/analytics/g;

    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->a:Lcom/yelp/android/analytics/g;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->c:Lcom/yelp/android/ui/panels/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Ljava/lang/String;)V

    .line 108
    return-void
.end method
