.class Lcom/yelp/android/ui/activities/ap;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ap;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ap;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/debug/Debug;->a(Landroid/content/Context;Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
