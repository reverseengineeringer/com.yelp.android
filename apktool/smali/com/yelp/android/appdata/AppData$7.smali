.class Lcom/yelp/android/appdata/AppData$7;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/analytics/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/AppData;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData$7;->a:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$7;->a:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->c(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->a()V

    .line 988
    return-void
.end method
