.class Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$2;
.super Ljava/lang/Object;
.source "ActivityBackgroundLocationOptIn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$2;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationOptInNo:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$2;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->a(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V

    .line 68
    return-void
.end method
