.class Lcom/yelp/android/ui/dialogs/q;
.super Ljava/lang/Object;
.source "CompleteRsvpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/q;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/q;->a:Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CompleteRsvpDialog;->dismiss()V

    .line 84
    return-void
.end method
