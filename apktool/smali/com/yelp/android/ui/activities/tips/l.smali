.class Lcom/yelp/android/ui/activities/tips/l;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/l;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/l;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->removeDialog(I)V

    .line 303
    return-void
.end method
