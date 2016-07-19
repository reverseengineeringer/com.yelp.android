.class Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$3;
.super Ljava/lang/Object;
.source "ActivityUserTips.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$3;->a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips$3;->a:Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;->a(Lcom/yelp/android/ui/activities/profile/tips/ActivityUserTips;)Lcom/yelp/android/ui/activities/profile/tips/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/yelp/android/ui/activities/profile/tips/a$a;->a(Lcom/yelp/android/serializable/Tip;Z)V

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
