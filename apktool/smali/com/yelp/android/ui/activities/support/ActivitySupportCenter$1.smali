.class Lcom/yelp/android/ui/activities/support/ActivitySupportCenter$1;
.super Lcom/yelp/android/ui/activities/support/c;
.source "ActivitySupportCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/ActivitySupportCenter$1;->a:Lcom/yelp/android/ui/activities/support/ActivitySupportCenter;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/support/c;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
