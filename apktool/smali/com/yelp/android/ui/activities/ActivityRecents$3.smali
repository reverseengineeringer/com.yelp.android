.class Lcom/yelp/android/ui/activities/ActivityRecents$3;
.super Ljava/lang/Object;
.source "ActivityRecents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityRecents;->f()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRecents;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRecents;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRecents$3;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRecents$3;->a:Lcom/yelp/android/ui/activities/ActivityRecents;

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRecents;->showDialog(I)V

    .line 258
    return-void
.end method
