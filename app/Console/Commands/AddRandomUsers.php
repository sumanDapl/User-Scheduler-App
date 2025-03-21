<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\RandomUserController;

class AddRandomUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'add:random-users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch random users and add them to the database';

    /**
     * Execute the console command.
     */
    public function handle(): void
    {
        $controller = new RandomUserController();
        $controller->addRandomUsersToDatabase();

        $this->info('Random users added to the database successfully.');
    }
}
