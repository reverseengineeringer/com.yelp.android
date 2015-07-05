.class Lcom/yelp/android/ui/activities/ak;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ak;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ak;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->d(Lcom/yelp/android/ui/activities/ActivityConfig;)V

    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ak;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->finish()V

    .line 447
    return-void
.end method
