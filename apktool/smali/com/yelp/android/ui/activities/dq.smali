.class Lcom/yelp/android/ui/activities/dq;
.super Ljava/lang/Object;
.source "ActivityRecents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dq;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dq;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents;->showDialog(I)V

    .line 237
    return-void
.end method
