.class Landroid/support/v4/app/FragmentActivity$a;
.super Landroid/support/v4/app/k;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/k",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    .line 841
    invoke-direct {p0, p1}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 842
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 872
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    # invokes: Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 879
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 901
    return-void
.end method

.method public c()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 867
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 895
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity$a;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
