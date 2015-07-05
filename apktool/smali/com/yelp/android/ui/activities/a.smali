.class Lcom/yelp/android/ui/activities/a;
.super Ljava/lang/Object;
.source "ActivityBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadge;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yelp/android/ui/activities/a;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/a;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    .line 100
    return-void
.end method
