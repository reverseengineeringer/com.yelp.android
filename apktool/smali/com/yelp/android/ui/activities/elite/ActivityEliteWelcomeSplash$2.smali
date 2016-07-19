.class Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;
.super Ljava/lang/Object;
.source "ActivityEliteWelcomeSplash.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash$2;->a:Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/elite/ActivityEliteWelcomeSplash;->finish()V

    .line 169
    return-void
.end method
