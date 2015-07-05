.class Lcom/yelp/android/ui/activities/v;
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
    .line 338
    iput-object p1, p0, Lcom/yelp/android/ui/activities/v;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/v;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->a(Lcom/yelp/android/ui/activities/ActivityConfig;Z)V

    .line 342
    return-void
.end method
