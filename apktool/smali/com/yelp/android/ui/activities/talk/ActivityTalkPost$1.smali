.class Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$1;
.super Ljava/lang/Object;
.source "ActivityTalkPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$1;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$1;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->showDialog(I)V

    .line 64
    return-void
.end method
