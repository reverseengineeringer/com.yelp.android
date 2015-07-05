.class Lcom/yelp/android/ui/activities/ae;
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
    .line 130
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ae;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ae;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ae;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v1, v2}, Lcom/yelp/android/debug/Debug;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
