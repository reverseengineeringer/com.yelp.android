.class public Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;
.super Ljava/lang/Object;
.source "MessagingActionsHelper.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

.field private b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

.field private c:Lcom/yelp/android/serializable/Conversation;

.field private final d:Lcom/yelp/android/ui/dialogs/r;

.field private final e:Lcom/yelp/android/ui/dialogs/r;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ac;-><init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/r;

    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ad;-><init>(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/r;

    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 39
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/apimanagers/p;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/bg;Z)V
    .locals 0

    .prologue
    .line 137
    invoke-interface {p2, p3}, Lcom/yelp/android/serializable/bg;->setBlocked(Z)V

    .line 138
    invoke-interface {p1, p2}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/bg;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/serializable/Conversation;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c:Lcom/yelp/android/serializable/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;)Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    .line 64
    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    .line 65
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "flag_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "delete_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    .line 57
    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 60
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->c:Lcom/yelp/android/serializable/Conversation;

    .line 44
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/serializable/Conversation;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v4

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p2, v3, v4, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->getSuccessMessage(Landroid/content/Context;Lcom/yelp/android/serializable/bg;Z)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    if-ne p2, v0, :cond_2

    move v0, v1

    .line 111
    :goto_1
    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 113
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/ae;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    :cond_2
    move v0, v2

    .line 108
    goto :goto_1

    .line 115
    :pswitch_0
    invoke-interface {p1, p3}, Lcom/yelp/android/ui/activities/messaging/a;->c(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_2

    .line 118
    :pswitch_1
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/bg;Z)V

    goto :goto_2

    .line 121
    :pswitch_2
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/serializable/bg;Z)V

    goto :goto_2

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/serializable/Conversation;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v3, p2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->getErrorMessage(Landroid/content/Context;Lcom/yelp/android/serializable/bg;Lcom/yelp/android/appdata/webrequests/YelpException;Z)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentManager;ILcom/yelp/android/serializable/Conversation;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    move v1, v0

    .line 95
    :goto_0
    return v1

    .line 71
    :pswitch_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v2, v3, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->a(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 73
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationBlockUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->b:Lcom/yelp/android/ui/activities/messaging/apimanagers/p;

    invoke-virtual {v2, v3, v0, v4}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging$MessagingActionsFragment;->b(Lcom/yelp/android/serializable/bg;ZLcom/yelp/android/ui/activities/messaging/apimanagers/p;)V

    .line 78
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MessagingConversationUnblockUser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper$DeleteConversationDialog;-><init>()V

    .line 82
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->e:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 83
    const-string/jumbo v2, "delete_dialog"

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v2, 0x7f07067a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    const v3, 0x7f0704f2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->d:Lcom/yelp/android/ui/dialogs/r;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->a(Lcom/yelp/android/ui/dialogs/r;)V

    .line 92
    const-string/jumbo v2, "flag_dialog"

    invoke-virtual {v0, p1, v2}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x7f0c04f5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
